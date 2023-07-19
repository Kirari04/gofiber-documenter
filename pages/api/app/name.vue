<template>
    <div class="flex flex-col-reverse md:flex-row grow">
        <div class="flex flex-col grow">
            <H1>🚀 App - Name</H1>
            <P> This method assigns the name of latest created route. </P>
            <Code path="/snippets/app-name-1" />
            <P> Example implementation of <B>Name</B> </P>
            <Code path="/snippets/app-name-2" />
            <P> When running the server will print out the following: </P>
            <Code path="/snippets/app-name-3" />
            <div class="flex basis-full"></div>
        </div>
        <SubMenu :menu-items="subMenuApp" />
    </div>
    <div class="divider"></div>
    <QuickNav :menu-items="subMenuApp" />
</template>

<script lang="ts" setup>
const title = "Fiber | 🚀 App - Name";
const description = "This method assigns the name of latest created route.";

useSeoMeta({
    title: title,
    ogTitle: title,
    description: description,
    ogDescription: description,
});
</script>
