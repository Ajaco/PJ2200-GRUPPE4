import java.util.Random;
public class Main {

    public static void main(String[] args) {
        System.out.println("insert into users(fullName, dateOfBirth, sex, email, phoneNr, occupation) values");
        for(int i = 0; i<1000; i++){
        System.out.print("(");
        //name
        randomName();
        System.out.print(", ");

        //date of birth
        System.out.print("'");
        randomInt(2000, 1900); //year of birth
        System.out.print(".");
        randomInt(12, 1); //month of birth
        System.out.print(".");
        randomInt(28, 1); //day of birth
        System.out.print("'");
        System.out.print(",");

        //sex
        if(sex()){
            System.out.print(" 'M'");
        }else{
            System.out.print(" 'F'");
        }
        System.out.print(", ");

        //mail
        randomMail();
        System.out.print(", ");

        //phonenumber
        randomInt(99999999,10000000);
        System.out.print(", ");

        //occupaton
        randomSingleName();
        System.out.print("),\n");
        }

        System.out.println("\n;");


    }

    public static void randomName(){
        char[] chars = "abcdefghijklmnopqrstuvwxyz".toCharArray();
        StringBuilder sb = new StringBuilder();
        Random random = new Random();
        for (int i = 0; i < 5; i++) {
            char c = chars[random.nextInt(chars.length)];
            sb.append(c);
        }
        String output = sb.toString();
        System.out.print("'" + output + " " + output + "'");
    }

    public static void randomSingleName(){
        char[] chars = "abcdefghijklmnopqrstuvwxyz".toCharArray();
        StringBuilder sb = new StringBuilder();
        Random random = new Random();
        for (int i = 0; i < 5; i++) {
            char c = chars[random.nextInt(chars.length)];
            sb.append(c);
        }
        String output = sb.toString();
        System.out.print("'" + output + "'");
    }

    public static void randomInt(int high, int low){
        Random rand = new Random();
        System.out.print(rand.nextInt(high-low) + low);
    }

    public static void randomYear(int i){
        Random rand = new Random();
        System.out.print("19" + rand.nextInt(i) + ".");
    }

    public static boolean sex() {
        Random random = new Random();
        return random.nextBoolean();
    }

    public static void randomMail(){
        char[] chars = "abcdefghijklmnopqrstuvwxyz".toCharArray();
        StringBuilder sb = new StringBuilder();
        Random random = new Random();
        for (int i = 0; i < 5; i++) {
            char c = chars[random.nextInt(chars.length)];
            sb.append(c);
        }
        String output = sb.toString();
        System.out.print("'" + output + "@" + output + ".com" +"'");
    }

}
