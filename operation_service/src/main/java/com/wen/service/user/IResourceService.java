package com.wen.service.user;

import com.wen.domain.user.MenuTree;
import com.wen.domain.user.Resource;
import com.wen.domain.user.ResourceQueryBean;
import com.wen.util.pager.TbData;

import java.util.List;

/**
 * 资源管理接口
 * 
 * @author huwenwen
 */
public interface IResourceService {

  /**
   * 查询所有有效的资源列表（树结构）
   * 
   * @return
   * @throws Exception
   */
  public MenuTree queryMenuTree() throws Exception;

  /**
   * 查询资源列表
   * 
   * @param currentPage
   * @param rqb
   * @return
   * @throws Exception
   */
  public TbData queryResourceTbData(Integer currentPage, ResourceQueryBean rqb) throws Exception;

  /**
   * 根据parentId查询资源列表
   * 
   * @param parentId
   * @return
   * @throws Exception
   */
  public List<Resource> queryResourceListByParentId(Integer parentId) throws Exception;

  /**
   * 根据ID查询资源对象
   * 
   * @param resourceId
   * @return
   * @throws Exception
   */
  public Resource queryResourceById(Integer resourceId) throws Exception;

  /**
   * 保存一条资源记录
   * 
   * @param resource
   * @return
   * @throws Exception
   */
  public int saveResource(Resource resource) throws Exception;

  public List<Resource> getAllResource();

}
