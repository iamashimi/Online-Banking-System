package Builder;

public class QueryBuilder {
private Query query;
	
	public QueryBuilder(){
		this.query=new Query();
	}
	
	public QueryBuilder select(String select){
		this.query.setSelect(select);
		return this;
	}
	
	public QueryBuilder from(String from){
		this.query.setFrom(from);
		return this;
	}

	
	public Query build(){
		String select=this.query.getSelect();
		String from=this.query.getFrom();

		
		if(select==null || select.trim().equals("")){
			throw new IllegalStateException("Query must have select");
		}

		if(from==null || from.trim().equals("")){
			throw new IllegalStateException("Query must have from");
		}
		
		return this.query;
		
		
		
	}
}
