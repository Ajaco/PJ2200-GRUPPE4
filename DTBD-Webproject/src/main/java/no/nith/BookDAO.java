package no.nith;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class BookDAO {
	
	public List<Book> getBooks() {
		
		// Lager en liste (java.util.List og java.util.ArrayList)
		// som skal inneholde bøkene vi vil ha tilbake
		List<Book> books = new ArrayList<Book>();
		
		// Benytter oss av JDBC-driveren (dekket i forelesning 1)
		// Kobler oss til databasen library på egen maskin.
		// SQL-scriptet for å sette opp library ligger på It's Learning.
		String url = "jdbc:mysql://localhost/library";
		String username = "root";	  // må kanskje oppdateres
		String password = "1234"; // må nok oppdateres
		
		// Forsøker å koble til databasen
		try {
			Connection connection =
					DriverManager.getConnection(url, username, password);
			
			String sql = "SELECT * FROM books ORDER BY author, title";
			PreparedStatement statement = connection.prepareStatement(sql);
			
			ResultSet result = statement.executeQuery();
			
			while (result.next()) {
				String title = result.getString("title");
				String author = result.getString("author");
				
				books.add(new Book(title, author));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return books;
	}
	
	public List<Book> getBooks(String query) {
		
		// Lager en liste (java.util.List og java.util.ArrayList)
		// som skal inneholde bøkene vi vil ha tilbake
		List<Book> books = new ArrayList<Book>();
		
		// Benytter oss av JDBC-driveren (dekket i forelesning 1)
		// Kobler oss til databasen library på egen maskin.
		// SQL-scriptet for å sette opp library ligger på It's Learning.
		String url = "jdbc:mysql://localhost/library";
		String username = "root";	  // må kanskje oppdateres
		String password = "1234"; // må nok oppdateres
		
		// Forsøker å koble til databasen
		try {
			Connection connection =
					DriverManager.getConnection(url, username, password);
			
			String sql = "SELECT * FROM books WHERE title LIKE ? ORDER BY author, title";
			PreparedStatement statement = connection.prepareStatement(sql);
			statement.setString(1, query);
			
			ResultSet result = statement.executeQuery();
			
			while (result.next()) {
				String title = result.getString("title");
				String author = result.getString("author");
				
				books.add(new Book(title, author));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return books;
	}

	public void insertBook(String title, String author) {
		
		// Benytter oss av JDBC-driveren (dekket i forelesning 1)
		// Kobler oss til databasen library på egen maskin.
		// SQL-scriptet for å sette opp library ligger på It's Learning.
		String url = "jdbc:mysql://localhost/library";
		String username = "root";	  // må kanskje oppdateres
		String password = "1234"; // må nok oppdateres
		
		// Forsøker å koble til databasen
		try {
			Connection connection =
					DriverManager.getConnection(url, username, password);
			
			String sql = "INSERT INTO books (title, author) VALUES (?, ?);";
			PreparedStatement statement = connection.prepareStatement(sql);
			
			statement.setString(1, title);
			statement.setString(2, author);
			
			statement.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
}