package ru.javawebinar.topjava.web;// Created on 15.12.2016.

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import ru.javawebinar.topjava.util.MealsUtil;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class MealServlet extends HttpServlet {
    /**
     * Create by: il4 on 15.12.2016
     */
    private static final Logger LOG = LoggerFactory.getLogger(MealServlet.class);

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        LOG.info("getAll");
        request.setAttribute("meals", MealsUtil.getWithExceeded(MealsUtil.MEAL_LIST, 2000));
        request.getRequestDispatcher("/meals.jsp").forward(request, response);
    }
}

