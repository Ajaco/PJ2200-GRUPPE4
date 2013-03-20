package no.nith;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UserDAO {
	
	public List<User> getUser() throws SQLException{

		List<User> users = new ArrayList<User>();	
		return users;
	}
	
	
	public List<User> getUser(String culomn, String value) throws SQLException{

		List<User> users = new ArrayList<User>();
		
		// Benytter oss av JDBC-driveren (dekket i forelesning 1)
		// Kobler oss til databasen library på egen maskin.
		// SQL-scriptet for å sette opp library ligger på It's Learning.
		String url = "jdbc:mysql://localhost/mingle";
		String username = "root";	
		String password = "1234"; 

		try {
			Connection connection =
					DriverManager.getConnection(url, username, password);
			
			String sql;
			if(culomn.equals("fullName"))
				sql = "SELECT * FROM users WHERE fullName like ?;";
			else if (culomn.equals("dateOfBirth"))
				sql = "SELECT * FROM users WHERE dateOfBirth like ?;";
			else if (culomn.equals("sex"))
				sql = "SELECT * FROM users WHERE sex like ?;";
			else if (culomn.equals("email"))
				sql = "SELECT * FROM users WHERE email like ?;";
			else if (culomn.equals("phoneNr"))
				sql = "SELECT * FROM users WHERE occupation like ?;";
			else if (culomn.equals("occupation"))
				sql = "SELECT * FROM users WHERE occupation like ?;";
			else
				sql = "SELECT * FROM users WHERE groupName like ?;";
			PreparedStatement statement = connection.prepareStatement(sql);
			statement.setString(1, value);
			ResultSet result = statement.executeQuery();
			
			while (result.next()) {
				String fullName = result.getString("fullName");
				String dateOfBirth = result.getString("dateOfBirth");
				String sex = result.getString("sex");
				String email = result.getString("email");
				String phoneNumber = result.getString("phoneNr");
				String occupation = result.getString("occupation");
				String groupName = result.getString("groupName");
				
				users.add(new User(fullName, dateOfBirth, sex, email, phoneNumber, occupation, groupName));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return users;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	public List<User> getUser(String query) throws SQLException {
		
		List<User> users = new ArrayList<User>();
		
		// Benytter oss av JDBC-driveren (dekket i forelesning 1)
		// Kobler oss til databasen library på egen maskin.
		// SQL-scriptet for å sette opp library ligger på It's Learning.
		String url = "jdbc:mysql://localhost/mingle";
		String username = "root";	
		String password = "1234"; 
		
		

		try {
			Connection connection =
					DriverManager.getConnection(url, username, password);
			
			String sql = "SELECT * FROM users WHERE groupName like ?;";
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
				String groupName = result.getString("groupName");
				
				users.add(new User(fullName, dateOfBirth, sex, email, phoneNumber, occupation, groupName));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return users;
	}
	
	
	
	
	
	
	
	
	
	
	public void insertUser(String fullName, String dateOfBirth, String sex, String email, String phoneNumber, String occupation, String groupName) throws SQLException {
		
		// Benytter oss av JDBC-driveren (dekket i forelesning 1)
		// Kobler oss til databasen library på egen maskin.
		// SQL-scriptet for å sette opp library ligger på It's Learning.
		String url = "jdbc:mysql://localhost/mingle";
		String username = "root";	 
		String password = "1234"; 
		
			Connection connection =
					DriverManager.getConnection(url, username, password);
			
			String sql = "INSERT INTO users (fullName, dateOfBirth, sex, email, PhoneNr, occupation, groupName) VALUES (?, ?, ?, ?, ?, ?, ?);";
			PreparedStatement statement = connection.prepareStatement(sql);
			statement.setString(1, fullName);
			statement.setString(2, dateOfBirth);
			statement.setString(3, sex);
			statement.setString(4, email);
			statement.setString(5, phoneNumber);
			statement.setString(6, occupation);
			statement.setString(7, groupName);
			
			statement.executeUpdate();
	}
}