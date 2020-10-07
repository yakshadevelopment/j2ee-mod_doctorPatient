package mod_doctorPatient;
import java.util.ArrayList;
import java.util.List;
public class PatientData {
	private static List<String> patientList=new ArrayList<String>();
	static
	{
		patientList.add("Tom Lucas,18Piccadelly Lane,65218954,Male,Cold & Cough,Dr.Gilbert");
		patientList.add("Harry Williams,55Potomac Lane,75432160,Male,Yellow Fever,Dr.Burton");
		patientList.add("Anna Richards,23Tolly Street,26541895,Female,Cold & Cough,Dr.Lousie");
		patientList.add("Tony Morgan,155Luber Street,45432162,Male,Stomac Upset,Dr.Forster");
		patientList.add("Nina Mathews,123Swinhoe Lane,63541894,Female,Fever,Dr.Cathy");
	}
	public static List<String> getAllPatients()
	{
		return patientList;
	}
	public static void addPatient(String str)
	{
		patientList.add(str);
	}
	public static List<String> findPatientByDoctor(String doctorName)
	{
		List<String> newList=new ArrayList<String>();
		for(String str:patientList)
		{
			String arr[]=str.split("\\,");
			if(arr[5].equalsIgnoreCase(doctorName))
				newList.add(str);
		}
		return newList;
	}

}
