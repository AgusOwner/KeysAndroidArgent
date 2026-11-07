.class public Lorg/apache/tools/ant/taskdefs/CloseResources;
.super Lorg/apache/tools/ant/Task;
.source "CloseResources.java"


# instance fields
.field private resources:Lorg/apache/tools/ant/types/resources/Union;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    .line 40
    new-instance v0, Lorg/apache/tools/ant/types/resources/Union;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/resources/Union;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/CloseResources;->resources:Lorg/apache/tools/ant/types/resources/Union;

    return-void
.end method


# virtual methods
.method public add(Lorg/apache/tools/ant/types/ResourceCollection;)V
    .locals 1

    .line 43
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/CloseResources;->resources:Lorg/apache/tools/ant/types/resources/Union;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/resources/Union;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    return-void
.end method

.method public execute()V
    .locals 3

    .line 47
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/CloseResources;->resources:Lorg/apache/tools/ant/types/resources/Union;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/Union;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_0
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/types/Resource;

    .line 48
    const-class v2, Lorg/apache/tools/ant/types/resources/URLProvider;

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Resource;->as(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/types/resources/URLProvider;

    if-eqz v1, :cond_0

    .line 50
    invoke-interface {v1}, Lorg/apache/tools/ant/types/resources/URLProvider;->getURL()Ljava/net/URL;

    move-result-object v1

    .line 52
    :try_start_0
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/net/URLConnection;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    return-void
.end method
