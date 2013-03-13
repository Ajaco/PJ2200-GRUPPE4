package no.nith;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UserDAO {
	
	public List<User> getUser() {
		
		// Lager en liste (java.util.List og java.util.ArrayList)
		// som skal inneholde bøkene vi vil ha tilbake
		List<User> users = new ArrayList<User>();
		
		// Benytter oss av JDBC-driveren (dekket i forelesning 1)
		// Kobler oss til databasen library på egen maskin.
		// SQL-scriptet for å sette opp library ligger på It's Learning.
		String url = "jdbc:mysql://localhost/mingle";
		String username = "root";	  // må kanskje oppdateres
		String password = "1234"; // må nok oppdateres
		
		// Forsøker å koble til databasen
		try {
			Connection connection =
					DriverManager.getConnection(url, username, password);
			
			String sql = "SELECT * FROM users;";
			PreparedStatement statement = connection.prepareStatement(sql);
			
			ResultSet result = statement.executeQuery();
			
			while (result.next()) {
				String fullName = result.getString("fullName");
				String dateOfBirth = result.getString("dateOfBirth");
				String sex = result.getString("sex");
				String email = result.getString("email");
				String phoneNumber = result.getString("phoneNr");
				String occupation = result.getString("occupation");
				
				users.add(new User(fullName, dateOfBirth, sex, email, phoneNumber, occupation));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return users;
	}
	
	public List<User> getUser(String query) {
		
		// Lager en liste (java.util.List og java.util.ArrayList)
		// som skal inneholde bøkene vi vil ha tilbake
		List<User> users = new ArrayList<User>();
		
		// Benytter oss av JDBC-driveren (dekket i forelesning 1)
		// Kobler oss til databasen library på egen maskin.
		// SQL-scriptet for å sette opp library ligger på It's Learning.
		String url = "jdbc:mysql://localhost/mingle";
		String username = "root";	  // må kanskje oppdateres
		String password = "1234"; // må nok oppdateres
		
		
		// Forsøker å koble til databasen
		try {
			Connection connection =
					DriverManager.getConnection(url, username, password);
			
			String sql = "SELECT * FROM users;";
			PreparedStatement statement = connection.prepareStatement(sql);
			statement.setString(1, query);
			
			ResultSet result = statement.executeQuery();
			
			while (result.next()) {
				String fullName = result.getString("fullName");
				String dateOfBirth = result.getString("dateOfBirth");
				String sex = result.getString("sex");
				String email = result.getString("email");
				String phoneNumber = result.getString("phoneNr");
				String occupation = result.getString("occupation");
				
				users.add(new User(fullName, dateOfBirth, sex, email, phoneNumber, occupation));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return users;
	}

	public void insertUser(String fullName, String dateOfBirth, String sex, String email, String phoneNumber, String occupation) {
		
		// Benytter oss av JDBC-driveren (dekket i forelesning 1)
		// Kobler oss til databasen library på egen maskin.
		// SQL-scriptet for å sette opp library ligger på It's Learning.
		String url = "jdbc:mysql://localhost/mingle";
		String username = "root";	  // må kanskje oppdateres
		String password = "1234"; // må nok oppdateres
		
		// Forsøker å koble til databasen
		try {
			Connection connection =
					DriverManager.getConnection(url, username, password);
			
			String sql = "INSERT INTO users (fullName, dateOfBirth, sex, email, PhoneNr, occupation) VALUES (?, ?, ?, ?, ?, ?);";
			PreparedStatement statement = connection.prepareStatement(sql);
			
			statement.setString(1, fullName);
			statement.setString(2, dateOfBirth);
			statement.setString(3, sex);
			statement.setString(4, email);
			statement.setString(5, phoneNumber);
			statement.setString(6, occupation);
			
			statement.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
}