<template>
    <div class="flex flex-col-reverse md:flex-row grow">
        <div class="flex flex-col grow">
            <H1>🧠 Ctx - {{ name }}</H1>
            <P> Binds the request body to a struct. </P>
            <P>
                It is important to specify the correct struct tag based on the
                content type to be parsed. For example, if you want to parse a
                <B>JSON body</B> with a field called Pass, you would use a
                struct field of <Tag>json:"pass"</Tag>.
            </P>
            <div class="my-6">
                <div class="overflow-x-auto">
                    <table class="table">
                        <!-- head -->
                        <thead>
                            <tr>
                                <th>content-type</th>
                                <th>struct tag</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th>application/x-www-form-urlencoded</th>
                                <td><Tag>form</Tag></td>
                            </tr>
                            <tr>
                                <th>multipart/form-data</th>
                                <td><Tag>form</Tag></td>
                            </tr>
                            <tr>
                                <th>application/json</th>
                                <td><Tag>json</Tag></td>
                            </tr>
                            <tr>
                                <th>text/xml</th>
                                <td><Tag>xml</Tag></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            <Code :path="`/snippets/ctx-${name.toLowerCase()}-1`" />
            <P>
                Example implementation of <B>{{ name }}</B>
            </P>
            <Code :path="`/snippets/ctx-${name.toLowerCase()}-2`" />
            <div class="alert alert-info mt-6">
                <Icon icon="info" />
                <span>
                    Returned value is only valid within the handler. Do not
                    store any references. Make copies or use the
                    <B>Immutable</B> setting instead.
                </span>
                <nuxtLink to="/docs/welcome/zero-allocation" class="btn">
                    Learn more
                </nuxtLink>
            </div>
            <div class="flex basis-full"></div>
        </div>
        <SubMenu :menu-items="subMenuCtx" />
    </div>
    <div class="divider"></div>
    <QuickNav :menu-items="subMenuCtx" />
</template>

<script lang="ts" setup>
const name = "BodyParser";
const title = `Fiber | 🧠 Ctx - ${name}`;
const description = "Binds the request body to a struct.";

useSeoMeta({
    title: title,
    ogTitle: title,
    description: description,
    ogDescription: description,
});
</script>
