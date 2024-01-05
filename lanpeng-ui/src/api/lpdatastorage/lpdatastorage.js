import request from '@/utils/request'

// 查询数据存储列表
export function listLpdatastorage(query) {
  return request({
    url: '/lpdatastorage/lpdatastorage/list',
    method: 'get',
    params: query
  })
}

// 查询数据存储详细
export function getLpdatastorage(id) {
  return request({
    url: '/lpdatastorage/lpdatastorage/' + id,
    method: 'get'
  })
}

// 新增数据存储
export function addLpdatastorage(data) {
  return request({
    url: '/lpdatastorage/lpdatastorage',
    method: 'post',
    data: data
  })
}

// 修改数据存储
export function updateLpdatastorage(data) {
  return request({
    url: '/lpdatastorage/lpdatastorage',
    method: 'put',
    data: data
  })
}

// 删除数据存储
export function delLpdatastorage(id) {
  return request({
    url: '/lpdatastorage/lpdatastorage/' + id,
    method: 'delete'
  })
}
