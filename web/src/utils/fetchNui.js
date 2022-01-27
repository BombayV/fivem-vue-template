/**
 *
 * @param { string } cbName - The endpoint callback name in the client.
 * @param { any } data - The data to send to the endpoint
 * @returns { Promise<any> }
 */

export const fetchNui = async (cbName, data) => {
  const options = {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json; charset=UTF-8'
    },
    body: JSON.stringify(data)
  };
  const resourceName = window.GetParentResourceName ? GetParentResourceName() : 'fivem-vue-template';
  const resp = await fetch(`https://${resourceName}/${cbName}`, options);
  return await resp.json();
};