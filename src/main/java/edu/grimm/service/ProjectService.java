package edu.grimm.service;

import java.util.List;

import edu.grimm.entity.Project;



public interface ProjectService {
	 public Project getUserById(int userId);

	

	 public List<Project> getAllProject(int userId);
}
