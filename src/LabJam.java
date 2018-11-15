import java.awt.CardLayout;
import java.awt.Dimension;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.SwingUtilities;

import panels.CollaboratorMainPanel;
import panels.LogIn;
import panels.ResearcherMainPanel;
import panels.Tab1;
import panels.Tab2;

public class LabJam {
	JFrame frame = new JFrame("LabJAM");
	JPanel mainPanel = new JPanel();
	JButton button2 = new JButton("switch to 1");
	CardLayout cl = new CardLayout();
	Connection con;
	
	public LabJam() {
		connect("ora_q7l0b", "a21539151");
		mainPanel.setLayout(cl);
		Tab1 tab1 = new Tab1(cl, mainPanel, con);
		Tab2 tab2 = new Tab2(cl, mainPanel, con);
		LogIn login = new LogIn(cl, mainPanel,con);
		CollaboratorMainPanel collaboratorMainPanel = new CollaboratorMainPanel(cl, mainPanel, con);
		ResearcherMainPanel researcherMainPanel = new ResearcherMainPanel(cl, mainPanel, con);

		mainPanel.add(tab1, "1");
		mainPanel.add(tab2, "2");
		mainPanel.add(login, "3");
		mainPanel.add(collaboratorMainPanel, "4");
		
		frame.add(mainPanel);
		frame.setPreferredSize(new Dimension(400, 400));
		frame.setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
		frame.pack();
		frame.setVisible(true);
		cl.show(mainPanel, "3");
	}
	
	public static void main(String[] args) {
		SwingUtilities.invokeLater(new Runnable() {
			@Override
			public void run() {
				new LabJam();
			}
		});
	}
	
	private void connect(String username, String password) {
		
		try {
			DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
		} catch (SQLException ex) {
			System.out.println("Message: " + ex.getMessage());
			System.exit(-1);
		}
		
		String connectURL = "jdbc:oracle:thin:@dbhost.ugrad.cs.ubc.ca:1522:ug"; 
		
		try {
			con = DriverManager.getConnection(connectURL,username,password);
			con.setAutoCommit(false);
			System.out.println("\nConnected to Oracle!");
		} catch (SQLException ex) {
			System.out.println("Message: " + ex.getMessage());
	    }
    }
}
