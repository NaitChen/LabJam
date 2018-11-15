package panels;

import java.awt.CardLayout;
import java.awt.event.ComponentEvent;
import java.awt.event.ComponentListener;
import java.sql.Connection;

import javax.swing.JPanel;

import queries.QueryBuilder;

import javax.swing.JButton;
import javax.swing.JLabel;

public class ResearcherMainPanel extends JPanel {
	JLabel lblNewLabel;
	
	/**
	 * Create the panel.
	 */
	public ResearcherMainPanel(CardLayout cl, JPanel mainPanel, Connection con) {
		setLayout(null);
		
		JButton btnSeeMyProjects = new JButton("See my Projects");
		btnSeeMyProjects.setBounds(48, 71, 115, 29);
		add(btnSeeMyProjects);
		
		lblNewLabel = new JLabel("LOL");
		lblNewLabel.setText(QueryBuilder.researcherID);
		lblNewLabel.setBounds(182, 153, 69, 20);
		add(lblNewLabel);
	}
}
