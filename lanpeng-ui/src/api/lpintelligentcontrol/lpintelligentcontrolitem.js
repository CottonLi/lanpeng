import request from '@/utils/request'

// 查询智能控制项列表
export function listLpintelligentcontrolitem(id) {
  return request({
    url: '/lpintelligentcontrol/lpintelligentcontrolitem/list/' + id,
    method: 'get'
  })
}

// 查询智能控制项详细
export function getLpintelligentcontrolitem(id) {
  return request({
    url: '/lpintelligentcontrol/lpintelligentcontrolitem/' + id,
    method: 'get'
  })
}

// 新增智能控制项
export function addLpintelligentcontrolitem(data) {
  return request({
    url: '/lpintelligentcontrol/lpintelligentcontrolitem',
    method: 'post',
    data: data
  })
}

// 修改智能控制项
export function updateLpintelligentcontrolitem(data) {
  return request({
    url: '/lpintelligentcontrol/lpintelligentcontrolitem',
    method: 'put',
    data: data
  })
}

// 删除智能控制项
export function delLpintelligentcontrolitem(id) {
  return request({
    url: '/lpintelligentcontrol/lpintelligentcontrolitem/' + id,
    method: 'delete'
  })
}
