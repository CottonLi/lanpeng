import request from '@/utils/request'

// 查询智能控制列表
export function listLpintelligentcontrol(query) {
  return request({
    url: '/lpintelligentcontrol/lpintelligentcontrol/list',
    method: 'get',
    params: query
  })
}

// 查询智能控制详细
export function getLpintelligentcontrol(id) {
  return request({
    url: '/lpintelligentcontrol/lpintelligentcontrol/' + id,
    method: 'get'
  })
}

// 新增智能控制
export function addLpintelligentcontrol(data) {
  return request({
    url: '/lpintelligentcontrol/lpintelligentcontrol',
    method: 'post',
    data: data
  })
}

// 修改智能控制
export function updateLpintelligentcontrol(data) {
  return request({
    url: '/lpintelligentcontrol/lpintelligentcontrol',
    method: 'put',
    data: data
  })
}

// 删除智能控制
export function delLpintelligentcontrol(id) {
  return request({
    url: '/lpintelligentcontrol/lpintelligentcontrol/' + id,
    method: 'delete'
  })
}
