import request from '@/utils/request'

// 查询组件列表
export function listLpmoduleinfo(query) {
  return request({
    url: '/lpmoduleinfo/lpmoduleinfo/list',
    method: 'get',
    params: query
  })
}

// 查询组件详细
export function getLpmoduleinfo(id) {
  return request({
    url: '/lpmoduleinfo/lpmoduleinfo/' + id,
    method: 'get'
  })
}

// 新增组件
export function addLpmoduleinfo(data) {
  return request({
    url: '/lpmoduleinfo/lpmoduleinfo',
    method: 'post',
    data: data
  })
}

// 修改组件
export function updateLpmoduleinfo(data) {
  return request({
    url: '/lpmoduleinfo/lpmoduleinfo',
    method: 'put',
    data: data
  })
}

// 删除组件
export function delLpmoduleinfo(id) {
  return request({
    url: '/lpmoduleinfo/lpmoduleinfo/' + id,
    method: 'delete'
  })
}
