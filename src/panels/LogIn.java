package panels;

import javax.swing.JPanel;
import javax.swing.JTextArea;

import queries.QueryBuilder;

import java.awt.CardLayout;
import java.awt.Font;

import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JButton;
import java.awt.event.ActionListener;
import java.sql.Connection;
import java.awt.event.ActionEvent;

public class LogIn extends JPanel {

	/**
	 * Create the panel.
	 */
	public LogIn(CardLayout cl, JPanel mainPanel, Connection con) {
		setLayout(null);
		JLabel lblIAmA = new JLabel("I am a");
		lblIAmA.setFont(new Font("Arial", Font.PLAIN, 20));
		lblIAmA.setBounds(70, 110, 82, 66);
		add(lblIAmA);
		
		JButton btnResearcher = new JButton("Researcher");
		btnResearcher.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent arg0) {
				String researcherID = JOptionPane.showInputDialog("My Researcher ID is");
				QueryBuilder.setResearcherID(researcherID);
				ResearcherMainPanel researcherMainPanel = new ResearcherMainPanel(cl, mainPanel, con);
				mainPanel.add(researcherMainPanel, "5");
				mainPanel.revalidate();
				cl.show(mainPanel, "5");
			}
		});
		btnResearcher.setBounds(218, 49, 115, 29);
		add(btnResearcher);
		
		JButton btnCollaborator = new JButton("Collaborator");
		btnCollaborator.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent arg0) {
				String collaboratorID = JOptionPane.showInputDialog("My Collaborator ID is");
				QueryBuilder.setCollaboratorID(collaboratorID);
				cl.show(mainPanel, "4");
			}
		});
		btnCollaborator.setBounds(218, 110, 115, 29);
		add(btnCollaborator);
		
		JButton btnLabManager = new JButton("Lab Manager");
		btnLabManager.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent arg0) {
				String labManagerID = JOptionPane.showInputDialog("My Lab Manager ID is");
			}
		});
		btnLabManager.setBounds(218, 169, 115, 29);
		add(btnLabManager);
		
		JButton btnPi = new JButton("PI");
		btnPi.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent arg0) {
				String PIID = JOptionPane.showInputDialog("My PI ID is");
			}
		});
		btnPi.setBounds(218, 235, 115, 29);
		add(btnPi);

	}
}
