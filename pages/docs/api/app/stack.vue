<template>
    <div class="flex flex-col-reverse md:flex-row grow">
        <div class="flex flex-col grow">
            <H1>🚀 App - Stack</H1>
            <P> This method returns the original router stack </P>
            <Code path="/snippets/app-stack-1" />
            <P>
                Example implementation of <B>Stack</B> where it prints the
                router stack on server start:
            </P>
            <Code path="/snippets/app-stack-2" />
            <P> When running the server will print out the following: </P>
            <Code path="/snippets/app-stack-3" />
            <div class="flex basis-full"></div>
        </div>
        <SubMenu :menu-items="subMenuApp" />
    </div>
    <div class="divider"></div>
    <QuickNav :menu-items="subMenuApp" />
</template>

<script lang="ts" setup>
const title = "Fiber | 🚀 App - Stack";
const description = "This method returns the original router stack";

useSeoMeta({
    title: title,
    ogTitle: title,
    description: description,
    ogDescription: description,
});
</script>
