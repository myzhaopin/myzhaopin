package me.dewitt.service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.enterprise.inject.New;

import org.springframework.stereotype.Service;

import me.dewitt.dao.NewsMapper;
import me.dewitt.pojo.News;
import me.dewitt.pojo.NewsExample;

@Service
public class NewsService {

    @Resource
    NewsMapper newsDao;

    public boolean insertNews(News record) {
        record.setDate(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date()));

        if (newsDao.insertSelective(record) == 1)
            return true;
        else
            return false;
    }

    public List<News> getAllNews() {
        return newsDao.selectByExample(new NewsExample());
    }

    public boolean deleteNews(Integer idNews) {
        if (newsDao.deleteByPrimaryKey(idNews) == 1)
            return true;
        else
            return false;
    }

    public News getNewsByNewsId(Integer idNews) {

        return newsDao.selectByPrimaryKey(idNews);
    }

    public boolean updateNews(News news) {
        NewsExample newsExample = new NewsExample();
        newsExample.createCriteria().andIdNewsEqualTo(news.getIdNews());

        //用ByExampleSelective是有选择的更新，没有赋值的不更新
        if (newsDao.updateByExampleSelective(news, newsExample) == 1)
            return true;
        else
            return false;
//		if(newsDao.updateByPrimaryKeySelective(news) == 1)
//			return true;
//		else
//			return false;
    }

}
