module SearchFor
  def search_for(query, on_fields)
    raise ArgumentError, "You must provide an :on => [..fields..] argument to #search_for." unless on_fields[:on]
    like = connection.class == ActiveRecord::ConnectionAdapters::PostgreSQLAdapter ? 'ILIKE' : 'LIKE'
    on_fields   = on_fields[:on].kind_of?(Array) ? on_fields[:on] : [on_fields[:on]]
    query_terms = query.split(/\s+/)
    fields      = on_fields.map {|f| "(" + (["#{f} #{like} ?"] * query_terms.size).join(" AND ") + ")"}.join(" OR ")
    query_terms = (query_terms.map {|qt| "%#{qt}%"}) * on_fields.size
    where(*([fields] + query_terms))
  end
end
