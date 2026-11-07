.class public final synthetic Lorg/apache/tools/ant/taskdefs/ManifestTask$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lorg/apache/tools/ant/taskdefs/Manifest$Section;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/tools/ant/taskdefs/Manifest$Section;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/ManifestTask$$ExternalSyntheticLambda1;->f$0:Lorg/apache/tools/ant/taskdefs/Manifest$Section;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ManifestTask$$ExternalSyntheticLambda1;->f$0:Lorg/apache/tools/ant/taskdefs/Manifest$Section;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/Manifest$Section;->getAttribute(Ljava/lang/String;)Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;

    move-result-object p1

    return-object p1
.end method
