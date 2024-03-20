class InvalidAgeException extends Exception {
    public InvalidAgeException(String message) {
        super(message);
    }
}

// Patient class
class Patient {
    private int age;

    // Method to set age
    public void setAge(int age) throws InvalidAgeException {
        if (age < 0 || age > 130) {
            throw new InvalidAgeException("Invalid age: " + age + ". Age must be between 0 and 130.");
        }
        this.age = age;
    }

    // Getter method for age
    public int getAge() {
        return age;
    }
}

// Main class
public class Main {
    public static void main(String[] args) {
        Patient patient = new Patient();

        // Attempt to set age with valid and invalid ages
        try {
            patient.setAge(25); // Valid age
            System.out.println("Patient age set successfully: " + patient.getAge());
            
            patient.setAge(150); // Invalid age
            System.out.println("Patient age set successfully: " + patient.getAge()); // This line won't be reached
        } catch (InvalidAgeException e) {
            System.out.println("Error: " + e.getMessage());
        }
    }
}
