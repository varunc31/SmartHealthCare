package RPackage;

import org.rosuda.JRI.REXP;
import org.rosuda.JRI.Rengine;

import TransferObjects.CategoriesTO;

public class CommandLineCall {
	private Rengine re;
	
	public CommandLineCall(){
		re = Rengine.getMainEngine();
		if(re == null)
			re = new Rengine(new String[] {"--vanilla"}, false, null);
	}
	
	public CategoriesTO produceResult(CategoriesTO cat){
		
		String ageGroup = cat.getAge();
		String sex = cat.getSex();
		double year = cat.getYear();
		String region = cat.getRegion();
		
		re.eval(String.format("inputFile <- c('%s')","/home/padmaja/Desktop/295B/239/DataSets/CancerChartRegion.txt"));
		re.eval(String.format("train <- read.table(c(inputFile), header=T, sep=\"\t\")"));
		// re.eval ("myFormula <- Deaths ~ Region.Code + Age.Group.Code + Sex + Year");
		re.eval(String.format("myFormula <- c('%s')", "Deaths ~ Age.Group.Code + Sex + Year + Region"));
		re.eval(String.format("fit <- lm(myFormula, train)"));
		re.eval(String.format("Age.Group.Code <- c('%s')", ageGroup));
		re.eval(String.format("Sex <- c('%s')", sex));
		re.eval(String.format("Year <- c(%s)", year));
		re.eval(String.format("Region <- c('%s')", region));
		re.eval(String.format("predictTable <- data.frame(Age.Group.Code,Sex,Year,Region);"));
		re.eval(String.format("prediction <- predict(fit, predictTable);"));
		
		REXP inputFile = re.eval("inputFile");
		System.out.println("inputFile is : "+inputFile.asString());
		
		REXP train = re.eval("train");
		System.out.println("train : "+ train.asVector());
		
		REXP myFormula = re.eval("myFormula");
		System.out.println("myFormula is : "+myFormula.asString());
		
		REXP fit = re.eval("fit");
		System.out.println("fit is : "+ fit.asVector());
		
		REXP result = re.eval("Sex");
		REXP ageprinting = re.eval("Year");
		System.out.println("the sex is " + result.asString() +" the year is "+ageprinting.asDouble());
		
		REXP predictTable = re.eval("predictTable");
		System.out.println("table to predict is : "+predictTable.asVector());
		
		REXP prediction = re.eval("prediction");
		System.out.println("number of deaths is : "+prediction.asDouble());
		
		cat.setNoOfDeaths(prediction.asDouble());
		
		//MedicalPredictionDAO dao = new MedicalPredictionDAO();
		//dao.insertCategoriesTO(cat);
		
        return cat;
	}
	
	public CategoriesTO predictRegionYear(CategoriesTO cat){
		
		double year = cat.getYear();
		String region = cat.getRegion();
		
		re.eval(String.format("inputFile <- c('%s')","/home/padmaja/Desktop/295B/239/DataSets/CancerChartRegion.txt"));
		re.eval(String.format("train <- read.table(c(inputFile), header=T, sep=\"\t\")"));
		re.eval(String.format("myFormula <- c('%s')", "Deaths ~ Year + Region"));
		re.eval(String.format("fit <- lm(myFormula, train)"));
		re.eval(String.format("Year <- c(%s)", year));
		re.eval(String.format("Region <- c('%s')", region));
		re.eval(String.format("predictTable <- data.frame(Year,Region);"));
		re.eval(String.format("prediction <- predict(fit, predictTable);"));
		
		REXP inputFile = re.eval("inputFile");
		System.out.println("inputFile is : "+inputFile.asString());
		
		REXP train = re.eval("train");
		System.out.println("train : "+ train.asVector());
		
		REXP myFormula = re.eval("myFormula");
		System.out.println("myFormula is : "+myFormula.asString());
		
		REXP fit = re.eval("fit");
		System.out.println("fit is : "+ fit.asVector());
		
		REXP predictTable = re.eval("predictTable");
		System.out.println("table to predict is : "+predictTable.asVector());
		
		REXP prediction = re.eval("prediction");
		System.out.println("number of deaths is : "+prediction.asDouble());
		
		cat.setNoOfDeaths(prediction.asDouble());
		
		//MedicalPredictionDAO dao = new MedicalPredictionDAO();
		//dao.insertCategoriesTO(cat);
        return cat;
		
	}
	
public CategoriesTO predictAgeGroup(CategoriesTO cat){
		
		String ageGroup = cat.getAge();
		double year = cat.getYear();
		
		re.eval(String.format("inputFile <- c('%s')","/home/padmaja/Desktop/295B/239/DataSets/CancerChartRegion.txt"));
		re.eval(String.format("train <- read.table(c(inputFile), header=T, sep=\"\t\")"));
		re.eval(String.format("myFormula <- c('%s')", "Deaths ~ Age.Group.Code + Year"));
		re.eval(String.format("fit <- lm(myFormula, train)"));
		re.eval(String.format("Age.Group.Code <- c('%s')", ageGroup));
		re.eval(String.format("Year <- c(%s)", year));
		re.eval(String.format("predictTable <- data.frame(Age.Group.Code, Year);"));
		re.eval(String.format("prediction <- predict(fit, predictTable);"));
		
		REXP inputFile = re.eval("inputFile");
		System.out.println("inputFile is : "+inputFile.asString());
		
		REXP train = re.eval("train");
		System.out.println("train : "+ train.asVector());
		
		REXP myFormula = re.eval("myFormula");
		System.out.println("myFormula is : "+myFormula.asString());
		
		REXP fit = re.eval("fit");
		System.out.println("fit is : "+ fit.asVector());
		
		REXP predictTable = re.eval("predictTable");
		System.out.println("table to predict is : "+predictTable.asVector());
		
		REXP prediction = re.eval("prediction");
		System.out.println("number of deaths is : "+prediction.asDouble());
		
		cat.setNoOfDeaths(prediction.asDouble());
		
		//MedicalPredictionDAO dao = new MedicalPredictionDAO();
		//dao.insertCategoriesTO(cat);
        return cat;
		
	}
}
