<template>
    <div class="flex flex-col-reverse md:flex-row grow">
        <div class="flex flex-col grow">
            <H1>🚀 App - GetRoutes</H1>
            <P> This method gets all routes. </P>
            <Code path="/snippets/app-getroutes-1" />
            <P>
                When <B>filterUseOption</B> equal to true, it will filter the
                routes registered by the middleware. <br />
                Example implementation of <B>GetRoutes</B>
            </P>
            <Code path="/snippets/app-getroutes-2" />
            <P> When running the server will print out the following: </P>
            <Code path="/snippets/app-getroutes-3" />
            <div class="flex basis-full"></div>
        </div>
        <SubMenu :menu-items="subMenuApp" />
    </div>
    <div class="divider"></div>
    <QuickNav :menu-items="subMenuApp" />
</template>

<script lang="ts" setup>
const title = "Fiber | 🚀 App - GetRoutes";
const description = "This method gets all routes.";

useSeoMeta({
    title: title,
    ogTitle: title,
    description: description,
    ogDescription: description,
});
</script>
