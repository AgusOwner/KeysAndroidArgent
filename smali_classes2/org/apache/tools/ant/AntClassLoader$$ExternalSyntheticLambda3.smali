.class public final synthetic Lorg/apache/tools/ant/AntClassLoader$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lorg/apache/tools/ant/AntClassLoader;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/tools/ant/AntClassLoader;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/AntClassLoader$$ExternalSyntheticLambda3;->f$0:Lorg/apache/tools/ant/AntClassLoader;

    iput-object p2, p0, Lorg/apache/tools/ant/AntClassLoader$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lorg/apache/tools/ant/AntClassLoader$$ExternalSyntheticLambda3;->f$0:Lorg/apache/tools/ant/AntClassLoader;

    iget-object v1, p0, Lorg/apache/tools/ant/AntClassLoader$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    check-cast p1, Ljava/io/File;

    invoke-virtual {v0, v1, p1}, Lorg/apache/tools/ant/AntClassLoader;->lambda$loadResource$0$org-apache-tools-ant-AntClassLoader(Ljava/lang/String;Ljava/io/File;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method
