import request from '@/utils/request'

// 查询lpdbconnection列表
export function listLpdbconnection(query) {
  return request({
    url: '/lpdatastorage/lpdbconnection/list',
    method: 'get',
    params: query
  })
}

// 查询lpdbconnection详细
export function getLpdbconnection(id) {
  return request({
    url: '/lpdatastorage/lpdbconnection/' + id,
    method: 'get'
  })
}

// 新增lpdbconnection
export function addLpdbconnection(data) {
  return request({
    url: '/lpdatastorage/lpdbconnection',
    method: 'post',
    data: data
  })
}

// 修改lpdbconnection
export function updateLpdbconnection(data) {
  return request({
    url: '/lpdatastorage/lpdbconnection',
    method: 'put',
    data: data
  })
}

// 删除lpdbconnection
export function delLpdbconnection(id) {
  return request({
    url: '/lpdatastorage/lpdbconnection/' + id,
    method: 'delete'
  })
}
