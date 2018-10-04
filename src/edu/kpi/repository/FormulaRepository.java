package edu.kpi.repository;

import edu.kpi.domain.Alcohol;
import edu.kpi.domain.AlcoholType;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class FormulaRepository {
	  private static String FIND_ALL = "select id, name, price, volume, image, description, model from items";
	  private static String FIND_BY_ID = "select id, name, price, volume, image, description, model from items where id = ?";
	  private static String FIND_BY_TYPE = "select id, name, price, volume, image, description, model from items where model = ?";

    public List<Alcohol> findAll(Connection con) throws SQLException{
        try (PreparedStatement stmt = con.prepareStatement(FIND_ALL)) {
            List<Alcohol> items = new ArrayList<>();

            ResultSet resultSet = stmt.executeQuery();
            while (resultSet.next()) {
                items.add(unmap(resultSet));
            }
            return items;
        }
    }

    public Alcohol findById(Connection con, String id) throws SQLException{
        try (PreparedStatement stmt = con.prepareStatement(FIND_BY_ID)) {
            stmt.setString(1, id);
            ResultSet resultSet = stmt.executeQuery();
            if (resultSet.next()) {
                return unmap(resultSet);
            }
            return null;
        }
    }

    private Alcohol unmap(ResultSet rs) throws SQLException{
        int k = 1;
        String id = rs.getString(k++);
        String name = rs.getString(k++);
        float price = rs.getFloat(k++);
        float volume = rs.getFloat(k++);
        String image = rs.getString(k++);
        String description = rs.getString(k++);
        int model = rs.getInt(k);
        AlcoholType type = AlcoholType.values()[model];
        return new Alcohol(id, name, price, volume, image, description, type);
    }
}
