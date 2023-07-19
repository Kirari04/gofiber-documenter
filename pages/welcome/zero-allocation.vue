<template>
    <div class="flex flex-col-reverse md:flex-row grow max-w-full">
        <div class="flex flex-col grow max-w-full">
            <H1>Zero Allocation</H1>
            <P>
                Some values returned from <B>*fiber.Ctx</B> are
                <B>not</B> immutable by default.
            </P>
            <P>
                Because fiber is optimized for <B>high-performance</B>, values
                returned from <B>fiber.Ctx</B> are <B>not</B> immutable by
                default and will be re-used across requests. As a rule of thumb,
                you <B>must</B> only use context values within the handler, and
                you <B>must not</B> keep any references. As soon as you return
                from the handler, any values you have obtained from the context
                will be re-used in future requests and will change below your
                feet. Here is an example:
            </P>

            <Code path="/snippets/zero-allocation-1" />

            <P>
                If you need to persist such values outside the handler, make
                copies of their <B>underlying buffer</B> using the
                <Ref href="https://pkg.go.dev/builtin/#copy" :blank="true"
                    >copy</Ref
                >
                builtin. Here is an example for persisting a string:
            </P>

            <Code path="/snippets/zero-allocation-2" />

            <P>
                We created a custom <Tag>CopyString</Tag> function that does the
                above and is available under
                <Ref
                    href="https://github.com/gofiber/fiber/tree/master/utils"
                    :blank="true"
                    >gofiber/utils</Ref
                >.
            </P>

            <Code path="/snippets/zero-allocation-3" />

            <P>
                Alternatively, you can also use the
                <Tag>Immutable</Tag> setting. It will make all values returned
                from the context immutable, allowing you to persist them
                anywhere. Of course, this comes at the cost of performance.
            </P>

            <Code path="/snippets/zero-allocation-4" />
        </div>
        <SubMenu :menu-items="subMenuWelcome" />
    </div>
    <div class="divider"></div>
    <QuickNav :menu-items="subMenuWelcome" />
</template>

<script lang="ts" setup>
const title = "Fiber | Zero Allocation";
const description =
    "Because fiber is optimized for high-performance, values returned from fiber.Ctx are not immutable by default and will be re-used across requests. As a rule of thumb, you must only use context values within the handler, and you must not keep any references.";

useSeoMeta({
    title: title,
    ogTitle: title,
    description: description,
    ogDescription: description,
});
</script>
