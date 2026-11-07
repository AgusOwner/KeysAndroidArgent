.class public final synthetic Lorg/apache/tools/ant/DirectoryScanner$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lorg/apache/tools/ant/DirectoryScanner;

.field public final synthetic f$1:Lorg/apache/tools/ant/types/selectors/TokenizedPath;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/tools/ant/DirectoryScanner;Lorg/apache/tools/ant/types/selectors/TokenizedPath;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/DirectoryScanner$$ExternalSyntheticLambda3;->f$0:Lorg/apache/tools/ant/DirectoryScanner;

    iput-object p2, p0, Lorg/apache/tools/ant/DirectoryScanner$$ExternalSyntheticLambda3;->f$1:Lorg/apache/tools/ant/types/selectors/TokenizedPath;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lorg/apache/tools/ant/DirectoryScanner$$ExternalSyntheticLambda3;->f$0:Lorg/apache/tools/ant/DirectoryScanner;

    iget-object v1, p0, Lorg/apache/tools/ant/DirectoryScanner$$ExternalSyntheticLambda3;->f$1:Lorg/apache/tools/ant/types/selectors/TokenizedPath;

    check-cast p1, Lorg/apache/tools/ant/types/selectors/TokenizedPattern;

    invoke-virtual {v0, v1, p1}, Lorg/apache/tools/ant/DirectoryScanner;->lambda$isIncluded$3$org-apache-tools-ant-DirectoryScanner(Lorg/apache/tools/ant/types/selectors/TokenizedPath;Lorg/apache/tools/ant/types/selectors/TokenizedPattern;)Z

    move-result p1

    return p1
.end method
