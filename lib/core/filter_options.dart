enum TypeFilters {
  all,
  income,
  outcome,
}

class TypeFilter {
  final String name;

  const TypeFilter({
    required this.name,
  });
}

const typeFilters = {
  TypeFilters.all: TypeFilter(name: 'All'),
  TypeFilters.income: TypeFilter(name: 'Income'),
  TypeFilters.outcome: TypeFilter(name: 'Outcome'),
};
