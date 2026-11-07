.class public final synthetic Lorg/apache/tools/ant/taskdefs/Zip$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;


# instance fields
.field public final synthetic f$0:Lorg/apache/tools/ant/taskdefs/Zip;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/tools/ant/taskdefs/Zip;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Zip$$ExternalSyntheticLambda2;->f$0:Lorg/apache/tools/ant/taskdefs/Zip;

    return-void
.end method


# virtual methods
.method public final isSelected(Lorg/apache/tools/ant/types/Resource;)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Zip$$ExternalSyntheticLambda2;->f$0:Lorg/apache/tools/ant/taskdefs/Zip;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/Zip;->lambda$selectFileResources$4$org-apache-tools-ant-taskdefs-Zip(Lorg/apache/tools/ant/types/Resource;)Z

    move-result p1

    return p1
.end method
