package ssm_grimm;

import org.junit.Test;

import edu.grimm.service.imp.ProjectServiceImp;

public class test {
	@Test
	public void sd(){
		
		ProjectServiceImp d=new ProjectServiceImp();
		d.getAllProject(1);
		
	}

}
