<template>
    <div class="flex flex-col-reverse md:flex-row grow">
        <div class="flex flex-col grow">
            <H1>🚀 App - GetRoute</H1>
            <P> This method gets the route by name. </P>
            <Code path="/snippets/app-getroute-1" />
            <P>
                Example implementation of <B>GetRoute</B>
            </P>
            <Code path="/snippets/app-getroute-2" />
            <P> When running the server will print out the following: </P>
            <Code path="/snippets/app-getroute-3" />
            <div class="flex basis-full"></div>
        </div>
        <SubMenu :menu-items="subMenuApp" />
    </div>
    <div class="divider"></div>
    <QuickNav :menu-items="subMenuApp" />
</template>

<script lang="ts" setup>
const title = "Fiber | 🚀 App - GetRoute";
const description = "This method gets the route by name.";

useSeoMeta({
    title: title,
    ogTitle: title,
    description: description,
    ogDescription: description,
});
</script>
