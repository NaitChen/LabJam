package panels;

import java.awt.BorderLayout;
import java.awt.CardLayout;

import javax.swing.JButton;
import javax.swing.JPanel;
import javax.swing.JTextField;

import net.proteanit.sql.DbUtils;

import java.awt.event.ActionListener;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.awt.event.ActionEvent;
import javax.swing.JTable;
import javax.swing.JTabbedPane;

public class Tab1 extends JPanel {
	private JTable table;

	/**
	 * Create the panel.
	 */
	public Tab1(CardLayout cl, JPanel mainPanel, Connection con) {
		setLayout(null);
		
		JButton switchButton = new JButton("Switch to 2");
		switchButton.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				cl.show(mainPanel, "2");
			}
		});
		switchButton.setBounds(0, 0, 115, 29);
		add(switchButton);
		
		JButton refreshButton = new JButton("Refresh");
		refreshButton.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent arg0) {
				selectAll(con);
			}
		});
		refreshButton.setBounds(130, 0, 115, 29);
		add(refreshButton);
		
		table = new JTable();
		table.setBounds(44, 100, 349, 164);
		selectAll(con);
		add(table);
	}
	
	private void selectAll(Connection con) {
		Statement  stmt;
		ResultSet  rs = null;
		   
		try{
			stmt = con.createStatement();
			rs = stmt.executeQuery("SELECT * FROM tab1");
			table.setModel(DbUtils.resultSetToTableModel(rs));
			// close the statement; 
			// the ResultSet will also be closed
			stmt.close();
			
		} catch (SQLException ex) {
			System.out.println("Message: " + ex.getMessage());
		}
	}
}
