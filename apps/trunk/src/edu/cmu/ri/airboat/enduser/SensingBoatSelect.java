/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/*
 * SensingBoatSelect.java
 *
 * Created on Nov 13, 2011, 3:12:21 PM
 */
package edu.cmu.ri.airboat.enduser;

import edu.cmu.ri.airboat.floodtest.*;
import edu.cmu.ri.airboat.generalAlmost.BoatSimpleProxy;
import edu.cmu.ri.airboat.generalAlmost.ProxyManager;
import java.awt.GridLayout;
import java.util.ArrayList;
import java.util.Hashtable;
import javax.swing.DefaultComboBoxModel;
import javax.swing.JRadioButton;

/**
 *
 * @author pscerri
 */
public class SensingBoatSelect extends javax.swing.JDialog {

    public boolean approved = false;
    private Hashtable<JRadioButton, BoatSimpleProxy> mapping = new Hashtable<JRadioButton, BoatSimpleProxy>();
    /** Creates new form SensingBoatSelect */
    public SensingBoatSelect(java.awt.Frame parent, boolean modal) {
        super(parent, modal);
        initComponents();
        
        buttonP.setLayout(new GridLayout(0,1));
        ProxyManager pm = new ProxyManager();
        for (BoatSimpleProxy boatSimpleProxy : pm.getAll()) {
            JRadioButton rb = new JRadioButton(boatSimpleProxy.toString());
            buttonP.add(rb);
            mapping.put(rb, boatSimpleProxy);
        }
        
        DefaultComboBoxModel dm = new DefaultComboBoxModel(BoatSimpleProxy.autonomousSearchAlgorithm.values());
        algC.setModel(dm);
    }

    /** This method is called from within the constructor to
     * initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is
     * always regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        cancelB = new javax.swing.JButton();
        buttonP = new javax.swing.JPanel();
        OKB = new javax.swing.JButton();
        algC = new javax.swing.JComboBox();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);

        cancelB.setText("Cancel");
        cancelB.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                cancelBActionPerformed(evt);
            }
        });

        org.jdesktop.layout.GroupLayout buttonPLayout = new org.jdesktop.layout.GroupLayout(buttonP);
        buttonP.setLayout(buttonPLayout);
        buttonPLayout.setHorizontalGroup(
            buttonPLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(0, 360, Short.MAX_VALUE)
        );
        buttonPLayout.setVerticalGroup(
            buttonPLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(0, 216, Short.MAX_VALUE)
        );

        OKB.setText("OK");
        OKB.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                OKBActionPerformed(evt);
            }
        });

        org.jdesktop.layout.GroupLayout layout = new org.jdesktop.layout.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(layout.createSequentialGroup()
                .add(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(layout.createSequentialGroup()
                        .add(23, 23, 23)
                        .add(cancelB)
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.UNRELATED)
                        .add(algC, 0, 170, Short.MAX_VALUE)
                        .add(18, 18, 18)
                        .add(OKB))
                    .add(layout.createSequentialGroup()
                        .addContainerGap()
                        .add(buttonP, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)))
                .addContainerGap())
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(org.jdesktop.layout.GroupLayout.TRAILING, layout.createSequentialGroup()
                .addContainerGap()
                .add(buttonP, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED, 29, Short.MAX_VALUE)
                .add(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(cancelB)
                    .add(OKB)
                    .add(algC, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .addContainerGap())
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void cancelBActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_cancelBActionPerformed
        setVisible(false);
    }//GEN-LAST:event_cancelBActionPerformed

    private void OKBActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_OKBActionPerformed

        setVisible(false);
        
        approved = true;
        
        System.out.println("Creating sensing areas");

    }//GEN-LAST:event_OKBActionPerformed

    /**
     * Get the selected proxies
     * 
     * @return 
     */
    public ArrayList<BoatSimpleProxy> getSelected() {
        ArrayList<BoatSimpleProxy> selected = new ArrayList<BoatSimpleProxy>();
        
        for (JRadioButton rb : mapping.keySet()) {
            if (rb.isSelected()) {
                selected.add(mapping.get(rb));
            }
        }
        
        return selected;
    }
    
    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        java.awt.EventQueue.invokeLater(new Runnable() {

            public void run() {
                SensingBoatSelect dialog = new SensingBoatSelect(new javax.swing.JFrame(), true);
                dialog.addWindowListener(new java.awt.event.WindowAdapter() {

                    public void windowClosing(java.awt.event.WindowEvent e) {
                        System.exit(0);
                    }
                });
                dialog.setVisible(true);
            }
        });
    }
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton OKB;
    public javax.swing.JComboBox algC;
    private javax.swing.JPanel buttonP;
    private javax.swing.JButton cancelB;
    // End of variables declaration//GEN-END:variables
}