.class public final synthetic Lorg/apache/tools/ant/taskdefs/Zip$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Zip$$ExternalSyntheticLambda0;->f$0:Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Zip$$ExternalSyntheticLambda0;->f$0:Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;

    check-cast p1, Lorg/apache/tools/ant/types/Resource;

    invoke-interface {v0, p1}, Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;->isSelected(Lorg/apache/tools/ant/types/Resource;)Z

    move-result p1

    return p1
.end method
