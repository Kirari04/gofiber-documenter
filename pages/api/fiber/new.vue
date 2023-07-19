<template>
    <div class="flex flex-col-reverse md:flex-row grow">
        <div class="flex flex-col grow">
            <H1>📦 Fiber - New</H1>
            <P>
                This method creates a new App named instance. You can pass
                optional config when creating a new instance.
            </P>
            <Code path="/snippets/fiber-new-1" />
            <P>
                Example
            </P>
            <Code path="/snippets/fiber-new-2" />
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
