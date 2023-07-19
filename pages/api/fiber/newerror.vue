<template>
    <div class="flex flex-col-reverse md:flex-row grow">
        <div class="flex flex-col grow">
            <H1>📦 Fiber - NewError</H1>
            <P>
                NewError creates a new HTTPError instance with an optional
                message.
            </P>
            <Code path="/snippets/fiber-newerror-1" />
            <P> Example </P>
            <Code path="/snippets/fiber-newerror-2" />
        </div>
        <SubMenu :menu-items="subMenuFiber" />
    </div>
    <div class="divider"></div>
    <QuickNav :menu-items="subMenuFiber" />
</template>

<script lang="ts" setup>
const title = "Fiber | 📦 Fiber - New";
useSeoMeta({
    title: title,
    ogTitle: title,
});
</script>
