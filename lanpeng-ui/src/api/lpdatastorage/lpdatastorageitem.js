import request from '@/utils/request'

// 查询数据存储项列表
export function listLpdatastorageitem(id) {
  return request({
    url: '/lpdatastorage/lpdatastorageitem/list/' + id,
    method: 'get'
  })
}

// 查询数据存储项详细
export function getLpdatastorageitem(id) {
  return request({
    url: '/lpdatastorage/lpdatastorageitem/' + id,
    method: 'get'
  })
}

// 新增数据存储项
export function addLpdatastorageitem(data) {
  return request({
    url: '/lpdatastorage/lpdatastorageitem',
    method: 'post',
    data: data
  })
}

// 修改数据存储项
export function updateLpdatastorageitem(data) {
  return request({
    url: '/lpdatastorage/lpdatastorageitem',
    method: 'put',
    data: data
  })
}

// 删除数据存储项
export function delLpdatastorageitem(id) {
  return request({
    url: '/lpdatastorage/lpdatastorageitem/' + id,
    method: 'delete'
  })
}
