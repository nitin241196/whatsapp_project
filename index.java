import java.util.*;

public class index{


    public void getInput(String PhoneNumber,String Message,String Time){

    }



    public void getMessagesByPhoneNumber(String PhoneNumber){

    }
    public void getPhoneNumberByMessage(String Message){

    }




    public static void main(String[] args) {
        Scanner s=new Scanner(System.in);
        System.out.println("Enter phone number");
        String phone_number=s.next();
        System.out.println("Enter Message");
        s.next();
        String message=s.nextLine();
        String time=java.time.LocalDate.now()+ " " + java.time.LocalTime.now() ;
        System.out.println(time);




    }






}
