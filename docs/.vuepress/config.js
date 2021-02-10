const sidebar = require("./utils/getSideBar");

module.exports = {
    base:'/azis-blog/',
    title: 'Welcome to Azis home',
    description: 'Just playing with me',
    themeConfig: {
        nav: [
            { text: '主页', link: '/' },
        ],
        sidebar:sidebar
    }
}