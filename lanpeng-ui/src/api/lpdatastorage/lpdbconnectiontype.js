import request from '@/utils/request'

// 查询lpdbconnectiontype列表
export function listLpdbconnectiontype(query) {
  return request({
    url: '/lpdatastorage/lpdbconnectiontype/list',
    method: 'get',
    params: query
  })
}

// 查询lpdbconnectiontype详细
export function getLpdbconnectiontype(id) {
  return request({
    url: '/lpdatastorage/lpdbconnectiontype/' + id,
    method: 'get'
  })
}

// 新增lpdbconnectiontype
export function addLpdbconnectiontype(data) {
  return request({
    url: '/lpdatastorage/lpdbconnectiontype',
    method: 'post',
    data: data
  })
}

// 修改lpdbconnectiontype
export function updateLpdbconnectiontype(data) {
  return request({
    url: '/lpdatastorage/lpdbconnectiontype',
    method: 'put',
    data: data
  })
}

// 删除lpdbconnectiontype
export function delLpdbconnectiontype(id) {
  return request({
    url: '/lpdatastorage/lpdbconnectiontype/' + id,
    method: 'delete'
  })
}
