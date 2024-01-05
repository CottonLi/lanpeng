import request from '@/utils/request'

// 查询数据项列表
export function listLpdataitem(query) {
  return request({
    url: '/lpdatastorage/lpdataitem/list',
    method: 'get',
    params: query
  })
}

// 查询数据项详细
export function getLpdataitem(id) {
  return request({
    url: '/lpdatastorage/lpdataitem/' + id,
    method: 'get'
  })
}

// 新增数据项
export function addLpdataitem(data) {
  return request({
    url: '/lpdatastorage/lpdataitem',
    method: 'post',
    data: data
  })
}

// 修改数据项
export function updateLpdataitem(data) {
  return request({
    url: '/lpdatastorage/lpdataitem',
    method: 'put',
    data: data
  })
}

// 删除数据项
export function delLpdataitem(id) {
  return request({
    url: '/lpdatastorage/lpdataitem/' + id,
    method: 'delete'
  })
}
