package com.shinonon.servlet;

import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.util.EntityUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * @author Shinonon
 */
@WebServlet("/FromAjaxservlet")
public class FromAjaxServlet extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setCharacterEncoding("utf-8");
        try {
            CloseableHttpClient httpClient = HttpClients.createDefault();
            HttpGet httpGet =
                    new HttpGet("https://www.layui.com/demo/table/user/?page=1&limit=30");
            CloseableHttpResponse response = httpClient.execute(httpGet);
            int code = response.getStatusLine().getStatusCode();
            System.out.println("http请求结果为:" + code);
            if (code == 200) {
                String result = EntityUtils.toString(response.getEntity());
                System.out.println(result);
                resp.getWriter().print(result);
            }
            response.close();
            httpClient.close();
        } catch (Exception e) {
        }
    }
}
