<#macro page>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Codeforces</title>
    <link rel="stylesheet" type="text/css" href="/css/normalize.css">
    <link rel="stylesheet" type="text/css" href="/css/style.css">
    <link rel="stylesheet" type="text/css" href="/css/form.css">
    <link rel="stylesheet" type="text/css" href="/css/datatable.css">
</head>
<body>
<header>
    <a href="/"><img src="/img/logo.png" alt="Codeforces" title="Codeforces"/></a>
    <div class="languages">
        <a href="#"><img src="/img/gb.png" alt="In English" title="In English"/></a>
        <a href="#"><img src="/img/ru.png" alt="In Russian" title="In Russian"/></a>
    </div>
    <div class="session-box">
        <#if username??>
            <a href="#">${username}</a>
            |
            <a href="/news/add">Add news</a>
            |
            <a href="/logout">Logout</a>
        <#else>
            <a href="/enter">Enter</a>
            |
            <a href="/register">Register</a>
        </#if>
    </div>
    <nav>
        <ul>
            <li><a href="/">Home</a></li>
            <li><a href="/top">Top</a></li>
            <li><a href="/contests">Contests</a></li>
            <li><a href="/gym">Gym</a></li>
            <li><a href="/problemset">Problemset</a></li>
            <li><a href="/groups">Groups</a></li>
            <li><a href="/rating">Rating</a></li>
        </ul>
    </nav>
</header>
<div class="middle">
    <aside>
        <section class="news">
            <div class="header">
                News
            </div>
            <div class="body">
                <#list newsList as news>
                    <p>
                        <heading>Post by ${news.username}</heading>
                        ${news.text}
                    </p>
                </#list>
            </div>
            <div class="footer">
                <a href="#">View all</a>
            </div>
        </section>
        <section>
            <div class="header">
                Pay attention
            </div>
            <div class="body">
                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate ducimus enim facere impedit nobis,
                nulla placeat quam suscipit unde voluptatibus.
            </div>
            <div class="footer">
                <a href="#">View all</a>
            </div>
        </section>
    </aside>
    <main>
        <#nested/>
    </main>
</div>
<footer>
    <p><a href="/users">${userCount!} registered users</a></p>
    <p><a href="#">Codeforces</a> &copy; 2010-2018 by Mike Mirzayanov ${text!}</p>
</footer>
</body>
</html>
</#macro>
