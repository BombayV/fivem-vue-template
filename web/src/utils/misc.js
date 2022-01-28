/**
 * Delay execution of a function by passed seconds
 * @param {number} seconds - Number of seconds to delay
 * @returns {Promise<void>}
 */
const Delay = (seconds) => new Promise((resp) => setTimeout(resp, 995 * seconds, true || false));
