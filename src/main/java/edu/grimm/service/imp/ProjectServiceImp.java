package edu.grimm.service.imp;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;



import edu.grimm.dao.ProjectDao;
import edu.grimm.entity.Project;
import edu.grimm.service.ProjectService;
@Service
public class ProjectServiceImp implements ProjectService {
	@Resource
	 ProjectDao projectDao;
	@Override
	public Project getUserById(int userId) {
		// TODO Auto-generated method stub
		
		return null;
	}



	@Override
	public List<Project> getAllProject(int userId) {
		// TODO Auto-generated method stub
	

		return projectDao.getAllProject(userId);
	}

}
