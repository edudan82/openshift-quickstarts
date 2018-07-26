package com.solutions.base.mvc.filter;

import java.util.List;

import org.springframework.stereotype.Component;


@Component
public class CustomFilter {

	private String columnName;
	private List<String> values;
	private Object valueTypes;
	private String searchCriteria;
	private int pageNumber = 1;
	private int recordsPerPage = 10;
	private int totalOfRecords = 0;
	
	
	
	public String getColumnName() {
		return columnName;
	}
	public void setColumnName(String columnName) {
		this.columnName = columnName;
	}
	public List<String> getValues() {
		return values;
	}
	public void setValues(List<String> values) {
		this.values = values;
	}
	public Object getValueTypes() {
		return valueTypes;
	}
	public void setValueTypes(Object valueTypes) {
		this.valueTypes = valueTypes;
	}
	public String getSearchCriteria() {
		return searchCriteria;
	}
	public void setSearchCriteria(String searchCriteria) {
		this.searchCriteria = searchCriteria;
	}
	public int getPageNumber() {
		return pageNumber;
	}
	public void setPageNumber(int pageNumber) {
		this.pageNumber = pageNumber;
	}
	public int getRecordsPerPage() {
		return recordsPerPage;
	}
	public void setRecordsPerPage(int recordsPerPage) {
		this.recordsPerPage = recordsPerPage;
	}
	public int getTotalOfRecords() {
		return totalOfRecords;
	}
	public void setTotalOfRecords(int totalOfRecords) {
		this.totalOfRecords = totalOfRecords;
	}
	@Override
	public String toString() {
		return "CustomFilter [values=" + values + ", pageNumber=" + pageNumber + ", recordsPerPage=" + recordsPerPage
				+ ", totalOfRecords=" + totalOfRecords + "]";
	}
	
	
	
	
	
}
