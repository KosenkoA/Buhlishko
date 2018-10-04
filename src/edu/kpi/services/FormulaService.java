package edu.kpi.services;

import edu.kpi.domain.Alcohol;
import edu.kpi.repository.FormulaRepository;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.*;

public class FormulaService {
   private TransactionManager transactionManager;
   private FormulaRepository formulaRepository;

   public FormulaService(TransactionManager transactionManager, FormulaRepository formulaRepository) {
      this.transactionManager = transactionManager;
      this.formulaRepository = formulaRepository;
   }

   public List<Alcohol> getAllTovars() {
      return transactionManager.doInTransaction(new TransactionOperation<List<Alcohol>>() {
         @Override
         public List<Alcohol> operation(Connection con) throws SQLException {
            return formulaRepository.findAll(con);
         }
      });
   }

   public Alcohol getById(final String id){
      return transactionManager.doInTransaction(new TransactionOperation<Alcohol>() {
         @Override
         public Alcohol operation(Connection con) throws SQLException {
            return formulaRepository.findById(con, id);
         }
      });
   }

}
