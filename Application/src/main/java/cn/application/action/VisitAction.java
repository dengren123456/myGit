package cn.application.action;

import cn.application.entity.Visit;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

public class VisitAction extends BaseAction<Visit> {
	private static final long serialVersionUID = 1L;
	private JSONObject jsonObject =new JSONObject();
	private JSONArray jsonArray=new JSONArray();
	
	
	public String add(){
		if(visitService.get(1)==null){
			Visit visit = new Visit();
			visit.setVisitor(1);
			visitService.save(visit);
		}else{
			Visit visit = visitService.get(1);
			visit.setVisitor(visitService.get(1).getVisitor()+1);
			visitService.update(visit);
		}
		return SUCCESS;
	}
	
	public String getCounts(){
		double counts = visitService.get(1).getVisitor();
		jsonObject.put("status", counts);
		return "jsonObject";
	}

	
	
	public JSONObject getJsonObject() {
		return jsonObject;
	}

	public void setJsonObject(JSONObject jsonObject) {
		this.jsonObject = jsonObject;
	}

	public JSONArray getJsonArray() {
		return jsonArray;
	}

	public void setJsonArray(JSONArray jsonArray) {
		this.jsonArray = jsonArray;
	}

	
	
}
