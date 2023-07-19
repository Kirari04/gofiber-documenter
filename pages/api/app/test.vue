<template>
    <div class="flex flex-col-reverse md:flex-row grow">
        <div class="flex flex-col grow">
            <H1>🚀 App - Test</H1>
            <P>
                Testing your application is done with the Test method. Use this
                method for creating <B>_test.go</B> files or when you need to debug
                your routing logic. The default timeout is <B>1s</B> if you want to
                disable a timeout altogether, pass <B>-1</B> as a second argument.
            </P>
            <Code path="/snippets/app-test-1" />
            <P> Example implementation of <B>Test</B> </P>
            <Code path="/snippets/app-test-2" />
            <div class="flex basis-full"></div>
        </div>
        <SubMenu :menu-items="subMenuApp" />
    </div>
    <div class="divider"></div>
    <QuickNav :menu-items="subMenuApp" />
</template>

<script lang="ts" setup>
const title = "Fiber | 🚀 App - TestTest";
const description =
    "Testing your application is done with the Test method. Use this method for creating _test.go files or when you need to debug your routing logic.";

useSeoMeta({
    title: title,
    ogTitle: title,
    description: description,
    ogDescription: description,
});
</script>
