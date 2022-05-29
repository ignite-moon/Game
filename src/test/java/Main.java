import com.alibaba.excel.EasyExcel;
import com.ssm.pojo.*;
import com.ssm.service.*;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;

public class Main {
    @Test
    public void test(){
        ApplicationContext ap = new ClassPathXmlApplicationContext("applicationContext.xml");

        UserService userService = (UserService) ap.getBean("userService");
        CharactersService cs =(CharactersService) ap.getBean("charactersService");
        MaterialService materialService = (MaterialService) ap.getBean("materialService");
        StrategyService strategyService = (StrategyService) ap.getBean("strategyService");
        VersionService versionService = (VersionService) ap.getBean("versionService");

//        Material material = new Material();
//        material.setName("虾仁");
//        material.setAccess("璃月杂货铺");
//        material.setPurpose("海鲜粥");
//        materialService.insert(material);

        //导出用户表成功
//        List<User> users = userService.findExcel();
//        List<User> users = userService.selectAll();
//        EasyExcel.write("C:\\lqq\\"+"用户表2.xls",User.class).sheet("用户清单").doWrite(users);
        List<Material> list = materialService.selectAll();
        List<Characters> characters =  cs.selectAll();
        List<Strategy> strategies = strategyService.selectAll();
        List<Version> versions = versionService.selectAll();

        //System.out.println(versions);
        //System.out.println(strategies);
        //System.out.println(characters);
    }
}
