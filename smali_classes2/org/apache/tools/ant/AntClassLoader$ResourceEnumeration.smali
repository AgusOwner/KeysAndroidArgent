.class Lorg/apache/tools/ant/AntClassLoader$ResourceEnumeration;
.super Ljava/lang/Object;
.source "AntClassLoader.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/AntClassLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResourceEnumeration"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Enumeration<",
        "Ljava/net/URL;",
        ">;"
    }
.end annotation


# instance fields
.field private nextResource:Ljava/net/URL;

.field private pathElementsIndex:I

.field private final resourceName:Ljava/lang/String;

.field final synthetic this$0:Lorg/apache/tools/ant/AntClassLoader;


# direct methods
.method constructor <init>(Lorg/apache/tools/ant/AntClassLoader;Ljava/lang/String;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lorg/apache/tools/ant/AntClassLoader$ResourceEnumeration;->this$0:Lorg/apache/tools/ant/AntClassLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iput-object p2, p0, Lorg/apache/tools/ant/AntClassLoader$ResourceEnumeration;->resourceName:Ljava/lang/String;

    const/4 p1, 0x0

    .line 141
    iput p1, p0, Lorg/apache/tools/ant/AntClassLoader$ResourceEnumeration;->pathElementsIndex:I

    .line 142
    invoke-direct {p0}, Lorg/apache/tools/ant/AntClassLoader$ResourceEnumeration;->findNextResource()V

    return-void
.end method

.method private findNextResource()V
    .locals 4

    const/4 v0, 0x0

    .line 178
    :catch_0
    :goto_0
    iget v1, p0, Lorg/apache/tools/ant/AntClassLoader$ResourceEnumeration;->pathElementsIndex:I

    iget-object v2, p0, Lorg/apache/tools/ant/AntClassLoader$ResourceEnumeration;->this$0:Lorg/apache/tools/ant/AntClassLoader;

    invoke-static {v2}, Lorg/apache/tools/ant/AntClassLoader;->access$000(Lorg/apache/tools/ant/AntClassLoader;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    if-nez v0, :cond_0

    .line 180
    :try_start_0
    iget-object v1, p0, Lorg/apache/tools/ant/AntClassLoader$ResourceEnumeration;->this$0:Lorg/apache/tools/ant/AntClassLoader;

    invoke-static {v1}, Lorg/apache/tools/ant/AntClassLoader;->access$000(Lorg/apache/tools/ant/AntClassLoader;)Ljava/util/Vector;

    move-result-object v1

    iget v2, p0, Lorg/apache/tools/ant/AntClassLoader$ResourceEnumeration;->pathElementsIndex:I

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 181
    iget-object v2, p0, Lorg/apache/tools/ant/AntClassLoader$ResourceEnumeration;->this$0:Lorg/apache/tools/ant/AntClassLoader;

    iget-object v3, p0, Lorg/apache/tools/ant/AntClassLoader$ResourceEnumeration;->resourceName:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lorg/apache/tools/ant/AntClassLoader;->getResourceURL(Ljava/io/File;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 182
    iget v1, p0, Lorg/apache/tools/ant/AntClassLoader$ResourceEnumeration;->pathElementsIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/tools/ant/AntClassLoader$ResourceEnumeration;->pathElementsIndex:I
    :try_end_0
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 188
    :cond_0
    iput-object v0, p0, Lorg/apache/tools/ant/AntClassLoader$ResourceEnumeration;->nextResource:Ljava/net/URL;

    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 1

    .line 153
    iget-object v0, p0, Lorg/apache/tools/ant/AntClassLoader$ResourceEnumeration;->nextResource:Ljava/net/URL;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic nextElement()Ljava/lang/Object;
    .locals 1

    .line 115
    invoke-virtual {p0}, Lorg/apache/tools/ant/AntClassLoader$ResourceEnumeration;->nextElement()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public nextElement()Ljava/net/URL;
    .locals 1

    .line 162
    iget-object v0, p0, Lorg/apache/tools/ant/AntClassLoader$ResourceEnumeration;->nextResource:Ljava/net/URL;

    if-eqz v0, :cond_0

    .line 166
    invoke-direct {p0}, Lorg/apache/tools/ant/AntClassLoader$ResourceEnumeration;->findNextResource()V

    return-object v0

    .line 164
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
