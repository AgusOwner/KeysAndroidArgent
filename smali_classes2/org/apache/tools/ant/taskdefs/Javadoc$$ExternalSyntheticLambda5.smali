.class public final synthetic Lorg/apache/tools/ant/taskdefs/Javadoc$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/io/FilenameFilter;


# instance fields
.field public final synthetic f$0:Lorg/apache/tools/ant/taskdefs/Javadoc;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/tools/ant/taskdefs/Javadoc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc$$ExternalSyntheticLambda5;->f$0:Lorg/apache/tools/ant/taskdefs/Javadoc;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc$$ExternalSyntheticLambda5;->f$0:Lorg/apache/tools/ant/taskdefs/Javadoc;

    invoke-virtual {v0, p1, p2}, Lorg/apache/tools/ant/taskdefs/Javadoc;->lambda$parsePackages$5$org-apache-tools-ant-taskdefs-Javadoc(Ljava/io/File;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
