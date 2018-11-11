package edu.grimm.dao;

import java.util.List;

import edu.grimm.entity.Project;



public interface ProjectDao {
	public Project queryProjectByPrimaryKey(Integer id);

	

	public List<Project> getAllProject(Integer id);
}
