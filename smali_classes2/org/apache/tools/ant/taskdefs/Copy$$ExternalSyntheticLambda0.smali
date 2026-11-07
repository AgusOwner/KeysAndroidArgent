.class public final synthetic Lorg/apache/tools/ant/taskdefs/Copy$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/apache/tools/ant/types/ResourceFactory;


# instance fields
.field public final synthetic f$0:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Copy$$ExternalSyntheticLambda0;->f$0:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final getResource(Ljava/lang/String;)Lorg/apache/tools/ant/types/Resource;
    .locals 1

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Copy$$ExternalSyntheticLambda0;->f$0:Ljava/io/File;

    invoke-static {v0, p1}, Lorg/apache/tools/ant/taskdefs/Copy;->lambda$buildMap$0(Ljava/io/File;Ljava/lang/String;)Lorg/apache/tools/ant/types/Resource;

    move-result-object p1

    return-object p1
.end method
